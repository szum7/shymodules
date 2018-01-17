/***
 * v1.0.0.0
 */

// Filter DataSet
DSCostCenterBrowse.Tables[0].DefaultView.RowFilter = "VALID_FROM_DATE <= '" + now.Date + "' AND VALID_TO_DATE >= '" + now.Date + "'";

// EntityFramework
[AcceptVerbs("POST")]
public IHttpActionResult SaveEmailTemplate([FromBody] SchemaEmailTemplateDTO template)
{
	try
	{
		using (SCUBA_DBEntities context = new SCUBA_DBEntities())
		{
			Schema_EmailTemplates t = null;
			if (template.id.HasValue)
				t = (from e in context.Schema_EmailTemplates
					 where e.Id == template.id.Value
					 select e).Single();
			else
			{
				t = new Schema_EmailTemplates();
				context.Schema_EmailTemplates.Add(t);
			}

			t.Title = template.title;
			t.Subject = template.subject;
			t.Description = template.description;
			t.Body = template.body;
			t.EntityId = template.entityId;

			context.SaveChanges();
			return Ok(template);
		}
	}
	catch (DbEntityValidationException e)
	{
		Logger.LogDBException(e);
		return InternalServerError(e);
	}
	catch (Exception ex)
	{
		Logger.LogError(ex);
		return InternalServerError(ex);
	}
}
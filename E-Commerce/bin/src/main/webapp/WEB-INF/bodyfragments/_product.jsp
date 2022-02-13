<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="crt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container">
	<br>
	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item linkSize"><i
					class="fas fa-tachometer-alt"></i> <a class="link-dark"
					href="<c:url value="/welcome"/>">Home</a></li>
				<li class="breadcrumb-item linkSize active" aria-current="page">
					<i class="fa fa-arrow-right" aria-hidden="true"></i>Product
				</li>
			</ol>
		</nav>
	</div>
	<hr>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/ctl/product"
		modelAttribute="form" enctype="multipart/form-data">
		<div class="card">
			<h5 class="card-header"
				style="background-color: #00061df7; color: white;">Product</h5>
			<div class="card-body">
				<b><%@ include file="businessMessage.jsp"%></b>

				<div class="col-md-6">
					<s:bind path="categoryId">
						<label for="inputEmail4" class="form-label">Category Name</label>
						<sf:select style="margin-bottom: 10px" class="form-control"
							path="${status.expression}">
							<sf:option value="-1" label="Select" />
							<sf:options itemLabel="name" itemValue="id" items="${catList}" />
						</sf:select>
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="name">
						<label for="inputEmail4" class="form-label">Name</label>
						<sf:input path="${status.expression}" placeholder="Enter Name"
							class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="price">
						<label for="inputEmail4" class="form-label">Price</label>
						<sf:input path="${status.expression}" placeholder="Enter Price"
							class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="description">
						<label for="inputEmail4" class="form-label">Description</label>
						<sf:textarea path="${status.expression}"
							placeholder="Description-max 255 characters" rows="4" cols="4"
							class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<div class="col-md-6">
					<s:bind path="image">
						<label for="inputEmail4" class="form-label">Image</label>
						<sf:input type="file" path="${status.expression}"
							placeholder="Enter Image" class="form-control" />
						<font color="red" style="font-size: 13px"><sf:errors
								path="${status.expression}" /></font>
					</s:bind>
				</div>

				<br>
				<div class="col-12">
					<input type="submit" name="operation"
						class="btn btn-primary pull-right" value="Save"> or <input
						type="submit" name="operation" class="btn btn-primary pull-right"
						value="Reset">
				</div>
			</div>
		</div>
	</sf:form>
</div>
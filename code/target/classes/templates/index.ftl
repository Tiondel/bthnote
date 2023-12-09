<!DOCTYPE html>
<html>
<head><title></title>
</head>
<body>
<h1>NoteTaker!</h1>
<form action="/note" method="POST" enctype="multipart/form-data">
    <ol>
        <li><label for="description">Write your content here</label>
            <textarea rows="4" name="description"><#if description??>${description}</#if></textarea>
            <input type="submit" value="Publish" name="publish">
        </li>
    </ol>
</form>
<ul><p>Notes</p>
    <#if notes??>
        <#list notes as note>
            <li><p class="measure"></p>
                <p>${note}</p>
                <p></p>
            </li>
        <#else>
            <p >You don't have any notes yet.</p>
        </#list>
    </#if>
</ul>
</body>
</html>
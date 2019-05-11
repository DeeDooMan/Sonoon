<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    isEditor = user.isEditor()
    currentUserId = user.getId()
    >
    <#else>
    <#assign
    name = "unknown"
    isAdmin = false
    isEditor = false
    currentUserId = -1
    >
</#if>
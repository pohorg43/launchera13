.class public Lcom/oplus/compat/content/res/ResourcesNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/content/res/ResourcesNative$RefIResourcesExtInfo;,
        Lcom/oplus/compat/content/res/ResourcesNative$RefResourcesInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.content.res.Resources"

.field private static final HAS_PACKAGE_ACTION:Ljava/lang/String; = "resourceHasPackage"

.field public static final PARAM_ID:Ljava/lang/String; = "id"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "ResourcesNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompatApplicationScale(Landroid/content/res/Resources;)F
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    return p0

    :cond_d
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/oplus/inner/content/res/ResourcesWrapper;->getCompatApplicationScale(Landroid/content/res/Resources;)F

    move-result p0

    return p0

    :cond_18
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0}, Lcom/oplus/compat/content/res/ResourcesNative;->getCompatApplicationScaleForCompat(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_29
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    return p0

    :cond_36
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getCompatApplicationScaleForCompat(Landroid/content/res/Resources;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThemeChanged(Landroid/content/res/Resources;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/oplus/compat/content/res/ResourcesNative$RefResourcesInfo;->access$000()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    invoke-static {}, Lcom/oplus/compat/content/res/ResourcesNative$RefIResourcesExtInfo;->access$100()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_22
    return v0

    :cond_23
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {p0}, Lcom/oplus/inner/content/res/ResourcesWrapper;->getThemeChanged(Landroid/content/res/Resources;)Z

    move-result p0

    return p0

    :cond_2e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {p0}, Lcom/oplus/compat/content/res/ResourcesNative;->getThemeChangedForCompat(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3f
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getThemeChangedForCompat(Landroid/content/res/Resources;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static resourceHasPackage(I)Z
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ResourcesNative"

    if-eqz v0, :cond_2a

    :try_start_9
    invoke-static {}, Lcom/oplus/compat/content/res/ResourcesNative$RefResourcesInfo;->access$300()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_9 .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    const-string v0, "no permission to access the blocked method"

    invoke-static {p0, v2, v0, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_2a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v3, "android.content.res.Resources"

    invoke-virtual {v0, v3}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v3, "resourceHasPackage"

    invoke-virtual {v0, v3}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_67
    const-string v0, "resourceHasPackage e= "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v1

    :cond_71
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method public static setIsThemeChanged(Landroid/content/res/Resources;Z)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/oplus/compat/content/res/ResourcesNative$RefResourcesInfo;->access$000()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/utils/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/oplus/compat/content/res/ResourcesNative$RefIResourcesExtInfo;->access$200()Lcom/oplus/utils/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/oplus/utils/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_22
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0, p1}, Lcom/oplus/inner/content/res/ResourcesWrapper;->setIsThemeChanged(Landroid/content/res/Resources;Z)V

    goto :goto_35

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {p0, p1}, Lcom/oplus/compat/content/res/ResourcesNative;->setIsThemeChangedForCompat(Landroid/content/res/Resources;Z)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static setIsThemeChangedForCompat(Landroid/content/res/Resources;Z)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

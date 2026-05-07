.class public Lcom/oplus/compat/content/IntentNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static ACTION_CALL_PRIVILEGED:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation
.end field

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.content.Intent"

.field private static final CONSTANT_ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "ACTION_CALL_PRIVILEGED"

.field private static final CONSTANT_EXTRA_USER_ID:Ljava/lang/String; = "EXTRA_USER_ID"

.field private static final CONSTANT_FLAG_RECEIVER_INCLUDE_BACKGROUND:Ljava/lang/String; = "FLAG_RECEIVER_INCLUDE_BACKGROUND"

.field public static EXTRA_USER_ID:Ljava/lang/String; = null
    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x0
    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static OPLUS_FLAG_MUTIL_APP:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field public static OPLUS_FLAG_MUTIL_CHOOSER:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IntentNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    const-string v0, "Not supported before N"

    const-string v1, "IntentNative"

    :try_start_4
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isS()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_b6

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const/16 v4, 0x200

    const/16 v5, 0x400

    const/high16 v6, 0x1000000

    if-eqz v2, :cond_20

    :try_start_12
    sput v5, Lcom/oplus/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_APP:I

    sput v4, Lcom/oplus/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_CHOOSER:I

    const-string v0, "android.intent.extra.USER_ID"

    sput-object v0, Lcom/oplus/compat/content/IntentNative;->EXTRA_USER_ID:Ljava/lang/String;

    sput v6, Lcom/oplus/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    sput-object v3, Lcom/oplus/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    goto/16 :goto_be

    :cond_20
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v2

    if-eqz v2, :cond_72

    sput v5, Lcom/oplus/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_APP:I

    sput v4, Lcom/oplus/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_CHOOSER:I

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v2, "android.content.Intent"

    invoke-virtual {v0, v2}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_USER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/compat/content/IntentNative;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FLAG_RECEIVER_INCLUDE_BACKGROUND"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oplus/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ACTION_CALL_PRIVILEGED"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    goto :goto_be

    :cond_6c
    const-string v0, "Epona Communication failed, static initializer failed."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    :cond_72
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-static {}, Lcom/oplus/compat/content/IntentNative;->initOplusFlagMutilApp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_APP:I

    invoke-static {}, Lcom/oplus/compat/content/IntentNative;->initOplusFlagMutilChooser()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oplus/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_CHOOSER:I

    invoke-static {}, Lcom/oplus/compat/content/IntentNative;->initActionCallPrivilegeda()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oplus/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    sput v6, Lcom/oplus/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    goto :goto_be

    :cond_9b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v2

    if-eqz v2, :cond_a4

    sput v6, Lcom/oplus/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    goto :goto_be

    :cond_a4
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isN()Z

    move-result v2

    if-eqz v2, :cond_ad

    sput-object v3, Lcom/oplus/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    goto :goto_be

    :cond_ad
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v2, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b6
    .catchall {:try_start_12 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallingUid(Landroid/content/Intent;)I
    .registers 3
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
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

    if-eqz v0, :cond_21

    :try_start_6
    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/OplusBaseIntent;->getCallingUid()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_14} :catch_17

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0

    :catch_17
    move-exception p0

    const-string v0, "IntentNative"

    const-string v1, "no permission to access the blocked method"

    invoke-static {p0, v0, v1, p0}, Lcom/oplus/compat/app/e;->a(Ljava/lang/NoSuchMethodError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/NoSuchMethodError;)Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    move-result-object p0

    throw p0

    :cond_21
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/oplus/inner/content/IntentWrapper;->getCallingUid(Landroid/content/Intent;)I

    move-result p0

    return p0

    :cond_2c
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getCallingUidForCompat(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getCallingUidForCompat(Landroid/content/Intent;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIsFromGameSpace(Landroid/content/Intent;)I
    .registers 2
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_17

    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/OplusBaseIntent;->getIsFromGameSpace()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0

    :cond_17
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/oplus/inner/content/IntentWrapper;->getIsFromGameSpace(Landroid/content/Intent;)I

    move-result p0

    return p0

    :cond_22
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getIsFromGameSpaceForCompat(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_33
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getIsFromGameSpaceForCompat(Landroid/content/Intent;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOplusFlags(Landroid/content/Intent;)I
    .registers 2
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_17

    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/OplusBaseIntent;->getOplusFlags()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0

    :cond_17
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/oplus/inner/content/IntentWrapper;->getOplusFlags(Landroid/content/Intent;)I

    move-result p0

    return p0

    :cond_22
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getOplusFlagsForCompat(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_33
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getOplusFlagsForCompat(Landroid/content/Intent;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOplusUserId(Landroid/content/Intent;)I
    .registers 2
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_17

    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/content/OplusBaseIntent;->getOplusUserId()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0

    :cond_17
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/oplus/inner/content/IntentWrapper;->getOplusUserId(Landroid/content/Intent;)I

    move-result p0

    return p0

    :cond_22
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lcom/oplus/compat/content/IntentNative;->getOplusUserIdForCompat(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_33
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static getOplusUserIdForCompat(Landroid/content/Intent;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initActionCallPrivilegeda()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static initOplusFlagMutilApp()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method private static initOplusFlagMutilChooser()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static setIsFromGameSpace(Landroid/content/Intent;I)V
    .registers 3
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_14

    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Landroid/content/OplusBaseIntent;->setIsFromGameSpace(I)V

    goto :goto_27

    :cond_14
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Lcom/oplus/inner/content/IntentWrapper;->setIsFromGameSpace(Landroid/content/Intent;I)V

    goto :goto_27

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0, p1}, Lcom/oplus/compat/content/IntentNative;->setIsFromGameSpaceForCompat(Landroid/content/Intent;I)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static setIsFromGameSpaceForCompat(Landroid/content/Intent;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setOplusFlags(Landroid/content/Intent;I)V
    .registers 3
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_14

    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Landroid/content/OplusBaseIntent;->setOplusFlags(I)V

    goto :goto_27

    :cond_14
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Lcom/oplus/inner/content/IntentWrapper;->setOplusFlags(Landroid/content/Intent;I)V

    goto :goto_27

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0, p1}, Lcom/oplus/compat/content/IntentNative;->setOplusFlagsForCompat(Landroid/content/Intent;I)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static setOplusFlagsForCompat(Landroid/content/Intent;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

.method public static setOplusUserId(Landroid/content/Intent;I)V
    .registers 3
    .param p0  # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    if-eqz v0, :cond_14

    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p0}, Lcom/oplus/compat/util/OplusTypeCastingHelperNative;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/OplusBaseIntent;

    if-eqz p0, :cond_27

    invoke-virtual {p0, p1}, Landroid/content/OplusBaseIntent;->setOplusUserId(I)V

    goto :goto_27

    :cond_14
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isOsVersion11_3()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Lcom/oplus/inner/content/IntentWrapper;->setOplusUserId(Landroid/content/Intent;I)V

    goto :goto_27

    :cond_1e
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p0, p1}, Lcom/oplus/compat/content/IntentNative;->setOplusUserIdForCompat(Landroid/content/Intent;I)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method

.method private static setOplusUserIdForCompat(Landroid/content/Intent;I)V
    .registers 2
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    return-void
.end method

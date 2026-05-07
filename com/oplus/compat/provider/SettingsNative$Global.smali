.class public Lcom/oplus/compat/provider/SettingsNative$Global;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/provider/SettingsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "Settings.Global"

.field public static NTP_SERVER_2:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field

.field public static ZEN_MODE_IMPORTANT_INTERRUPTIONS:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field

.field public static ZEN_MODE_OFF:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "SettingsNative"

    :try_start_2
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/oplus/compat/provider/SettingsNative$Global;->ZEN_MODE_IMPORTANT_INTERRUPTIONS:I

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/oplus/compat/provider/SettingsNative$Global;->ZEN_MODE_OFF:I

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/provider/SettingsNative$Global;->NTP_SERVER_2:Ljava/lang/String;

    goto :goto_6c

    :cond_2a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/oplus/compat/provider/SettingsNative$Global;->ZEN_MODE_IMPORTANT_INTERRUPTIONS:I

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->access$100()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/oplus/compat/provider/SettingsNative$Global;->ZEN_MODE_OFF:I

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global;->initNtpServer2()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/compat/provider/SettingsNative$Global;->NTP_SERVER_2:Ljava/lang/String;

    goto :goto_6c

    :cond_4b
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-static {}, Lcom/oplus/compat/provider/SettingsNative$Global$ReflectInfo;->access$200()Lcom/oplus/utils/reflect/RefObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/utils/reflect/RefObject;->getWithException(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/oplus/compat/provider/SettingsNative$Global;->NTP_SERVER_2:Ljava/lang/String;

    goto :goto_6c

    :cond_5e
    const-string v1, "Not supported before Q"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_63} :catch_64

    goto :goto_6c

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initNtpServer2()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "Settings.Global"

    const-string v1, "initNtpServer2"

    invoke-static {v0, v1}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static putFloat(Ljava/lang/String;F)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.SETTINGS"
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "Settings.Global"

    const-string v1, "putFloat"

    const-string v2, "SETTINGS_KEY"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "SETTINGS_VALUE"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withFloat(Ljava/lang/String;F)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_46
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result p0

    return p0

    :cond_59
    const-string p0, "SettingsNative"

    const-string p1, "SettingsNative.Global.putFloat is not supported before M"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 p0, 0x0

    return p0
.end method

.method public static putInt(Ljava/lang/String;I)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.SETTINGS"
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "Settings.Global"

    const-string v1, "putInt"

    const-string v2, "SETTINGS_KEY"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "SETTINGS_VALUE"

    invoke-static {p0, v0, p1}, Lcom/oplus/compat/app/f;->a(Lcom/oplus/epona/Request$Builder;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3a
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_4d
    const-string p0, "SettingsNative"

    const-string p1, "SettingsNative.Global.putInt is not supported before M"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 p0, 0x0

    return p0
.end method

.method public static putLong(Ljava/lang/String;J)Z
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.SETTINGS"
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "Settings.Global"

    const-string v1, "putLong"

    const-string v2, "SETTINGS_KEY"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "SETTINGS_VALUE"

    invoke-virtual {p0, v0, p1, p2}, Lcom/oplus/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_46
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0

    return p0

    :cond_59
    const-string p0, "SettingsNative"

    const-string p1, "SettingsNative.Global.putLong is not supported before M"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 p0, 0x0

    return p0
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.SETTINGS"
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "Settings.Global"

    const-string v1, "putString"

    const-string v2, "SETTINGS_KEY"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "SETTINGS_VALUE"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_46
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_59
    const-string p0, "SettingsNative"

    const-string p1, "SettingsNative.Global.putString is not supported before M"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 p0, 0x0

    return p0
.end method

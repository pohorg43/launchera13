.class public Lcom/oplus/compat/provider/SettingsNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/provider/SettingsNative$System;,
        Lcom/oplus/compat/provider/SettingsNative$Secure;,
        Lcom/oplus/compat/provider/SettingsNative$Global;
    }
.end annotation


# static fields
.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final SETTINGS_KEY:Ljava/lang/String; = "SETTINGS_KEY"

.field private static final SETTINGS_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.SETTINGS"

.field private static final SETTINGS_VALUE:Ljava/lang/String; = "SETTINGS_VALUE"

.field private static final SETTINGS_VALUE_DEF:Ljava/lang/String; = "def"

.field private static final SETTINGS_VALUE_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final TAG:Ljava/lang/String; = "SettingsNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLockPasswordMinLength(II)I
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "Settings.System"

    const-string v1, "getIntForUser"

    const-string v2, "SETTINGS_KEY"

    const-string v3, "PASSWORD_LENGTH"

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "def"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userHandle"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3b
    const-string p0, "SettingsNative"

    const-string v0, "getLockPasswordMinLength is not supported before R"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return p1
.end method

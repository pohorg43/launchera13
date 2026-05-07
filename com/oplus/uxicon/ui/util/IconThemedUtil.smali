.class public Lcom/oplus/uxicon/ui/util/IconThemedUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICON_THEME_AUTHORITY:Ljava/lang/String; = "com.android.launcher.grid_control"

.field private static final ICON_THEME_ENABLE_KEY:Ljava/lang/String; = "boolean_value"

.field private static final ICON_THEME_OVERLAY_SETTINGS_KEY:Ljava/lang/String; = "theme_customization_overlay_packages"

.field private static final ICON_THEME_OVERLAY_SETTINGS_VALUE_JSON:Ljava/lang/String; = "{\"_applied_timestamp\": %s,\"android.theme.customization.color_index\": 1,\"android.theme.customization.color_both\": 1,\"android.theme.customization.theme_style\":\"TONAL_SPOT\",\"android.theme.customization.color_source\": \"home_wallpaper\"}"

.field private static final ICON_THEME_PATH:Ljava/lang/String; = "icon_themed"

.field private static final ICON_THEME_SCHEME:Ljava/lang/String; = "content"

.field private static final TAG:Ljava/lang/String; = "IconThemedUtil"

.field private static final THIRD_ICON_BIT:I = 0xffff

.field private static final THIRD_ICON_BIT_OFFSET:I = 0x20

.field private static final THIRD_ICON_DIV:F = 100.0f

.field private static final THIRD_ICON_SCALE_MIN:F = 0.3f


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColors(Landroid/content/Context;)[I
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x106003a

    const/16 v5, 0x20

    if-ne v1, v5, :cond_28

    const v1, 0x1060027

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, v0, v2

    goto :goto_37

    :cond_28
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    const v1, 0x1060033

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    aput p0, v0, v2

    :goto_37
    return-object v0
.end method

.method public static getThirdIconScale(Landroid/content/res/Resources;)F
    .registers 7

    const/high16 v0, 0x3f800000  # 1.0f

    if-nez p0, :cond_5

    return v0

    :cond_5
    const-wide/16 v1, 0x0

    invoke-static {p0}, Lcom/oplus/uxicon/ui/util/UxScreenUtil;->getDefaultIconSize(Landroid/content/res/Resources;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    const-class v5, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v5, v4}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-virtual {v4}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    iget-wide v1, v1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    :cond_25
    const/16 v4, 0x20

    shr-long/2addr v1, v4

    const-wide/32 v4, 0xffff

    and-long/2addr v1, v4

    long-to-int v1, v1

    if-eqz v1, :cond_54

    int-to-float v1, v1

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p0

    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->getThemeParamScale()I

    move-result p0

    int-to-float p0, p0

    int-to-float v2, v3

    mul-float v3, v2, v0

    div-float/2addr p0, v3

    const v3, 0x3e99999a  # 0.3f

    cmpg-float v4, p0, v3

    if-gez v4, :cond_52

    cmpl-float v0, v0, v2

    if-lez v0, :cond_52

    mul-float/2addr p0, v3

    float-to-int p0, p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    :cond_52
    div-float v0, v1, v2

    :cond_54
    return v0
.end method

.method public static isIconThemedEnable(Landroid/content/ContentResolver;)Z
    .registers 7

    const-string v0, "content://com.android.launcher.grid_control/icon_themed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "IconThemedUtil"

    if-eqz p0, :cond_7f

    const/4 v3, 0x0

    :try_start_10
    invoke-virtual {p0, v0, v3, v3, v3}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_5e
    .catchall {:try_start_10 .. :try_end_14} :catchall_5c

    if-eqz v0, :cond_53

    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "boolean_value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_45

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    goto :goto_2a

    :cond_29
    move v4, v1

    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIconThemedEnable enable : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_4e

    :try_start_3e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_5e
    .catchall {:try_start_3e .. :try_end_41} :catchall_5c

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return v4

    :cond_45
    :try_start_45
    const-string v3, "isIconThemedEnable cursor index = -1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4e

    :try_start_4a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_58

    :catchall_4e
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_53
    const-string v0, "isIconThemedEnable cursor is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_58} :catch_5e
    .catchall {:try_start_4a .. :try_end_58} :catchall_5c

    :goto_58
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_84

    :catchall_5c
    move-exception v0

    goto :goto_7b

    :catch_5e
    move-exception v0

    :try_start_5f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIconThemedEnable RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5f .. :try_end_77} :catchall_5c

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_84

    :goto_7b
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    throw v0

    :cond_7f
    const-string p0, "isIconThemedEnable providerClient is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    return v1
.end method

.method public static updateIconThemedColor(Landroid/content/ContentResolver;)Z
    .registers 4

    const-string v0, ""

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "{\"_applied_timestamp\": %s,\"android.theme.customization.color_index\": 1,\"android.theme.customization.color_both\": 1,\"android.theme.customization.theme_style\":\"TONAL_SPOT\",\"android.theme.customization.color_source\": \"home_wallpaper\"}"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "theme_customization_overlay_packages"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static updateIconThemedEnable(Landroid/content/ContentResolver;Z)Z
    .registers 7

    const-string v0, "content://com.android.launcher.grid_control/icon_themed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "IconThemedUtil"

    if-eqz p0, :cond_62

    :try_start_f
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "boolean_value"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v3, p1, p1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    move p1, v1

    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconThemedEnable update result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_3b} :catch_41
    .catchall {:try_start_f .. :try_end_3b} :catchall_3f

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    return p1

    :catchall_3f
    move-exception p1

    goto :goto_5e

    :catch_41
    move-exception p1

    :try_start_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIconThemedEnable RemoteException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_3f

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_67

    :goto_5e
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    throw p1

    :cond_62
    const-string p0, "updateIconThemedEnable providerClient is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_67
    return v1
.end method

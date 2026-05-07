.class public final Lcom/oplus/quickstep/learning/NotificationHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHANNEL_DESCRIPTION:Ljava/lang/String; = "goning to learning gesture page"

.field private static final CHANNEL_ID:Ljava/lang/String; = "gesture_channel_id"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "gesture_channel"

.field public static final INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

.field private static final KEY_FORCE_SHOWN:Ljava/lang/String; = "shown"

.field private static final NOTIFICATION_ID:I = 0x9

.field private static final PREFS_NAME:Ljava/lang/String; = "gesture_notification"

.field private static final TAG:Ljava/lang/String; = "NotificationHelper"

.field private static forceShown:Z

.field private static isNotificationShown:Z

.field private static notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/learning/NotificationHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getContentProtectPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string p0, "gesture_notification"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final cancelNotification()V
    .registers 3

    const-string p0, "QuickStep"

    const-string v0, "NotificationHelper"

    const-string v1, "cancelNotification()"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/quickstep/learning/NotificationHelper;->isNotificationShown:Z

    if-nez p0, :cond_e

    return-void

    :cond_e
    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/learning/NotificationHelper;->isNotificationShown:Z

    sget-object p0, Lcom/oplus/quickstep/learning/NotificationHelper;->notificationManager:Landroid/app/NotificationManager;

    if-nez p0, :cond_1b

    const-string p0, "notificationManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1b
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->notificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/learning/NotificationHelper;->getContentProtectPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "shown"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/oplus/quickstep/learning/NotificationHelper;->forceShown:Z

    const-string p1, "init: forceShown = "

    const-string v0, "QuickStep"

    const-string v1, "NotificationHelper"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final sendLearningGestureNotificationIfNeed(Landroid/content/Context;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/learning/NotificationHelper;->forceShown:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x4

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "gesture_channel_id"

    const-string v3, "gesture_channel"

    invoke-direct {v1, v2, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "goning to learning gesture page"

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->notificationManager:Landroid/app/NotificationManager;

    const-string v3, "notificationManager"

    const/4 v4, 0x0

    if-nez v0, :cond_24

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_24
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/launcher/guide/side/LearningGesturesActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v5, 0x4000000

    invoke-static {p1, v1, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v5, 0x7f12038e

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v1

    const-string v5, "Builder(\n               …\n                .build()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v5, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const v7, 0x7f120390

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.substName"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v6, 0x7f0805b6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v6, 0x7f12038f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_8e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8f

    :cond_8e
    move-object v4, v0

    :goto_8f
    const/16 v0, 0x9

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sput-boolean v6, Lcom/oplus/quickstep/learning/NotificationHelper;->isNotificationShown:Z

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/learning/NotificationHelper;->updatePreference(Landroid/content/Context;)V

    const-string p0, "QuickStep"

    const-string p1, "NotificationHelper"

    const-string v0, "send learning gesture notification"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updatePreference(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "NotificationHelper"

    const-string v2, "updatePreference()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/learning/NotificationHelper;->forceShown:Z

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/learning/NotificationHelper;->forceShown:Z

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/learning/NotificationHelper;->getContentProtectPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-boolean p1, Lcom/oplus/quickstep/learning/NotificationHelper;->forceShown:Z

    const-string v0, "shown"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

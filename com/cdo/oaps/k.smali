.class public Lcom/cdo/oaps/k;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_6e

    if-nez p2, :cond_5

    goto :goto_6e

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_6e

    :cond_1f
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_6e

    :cond_3e
    sget-object p1, Li1/o;->h:Li1/o;

    if-nez p1, :cond_55

    sget-object p1, Li1/o;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_45
    sget-object p2, Li1/o;->h:Li1/o;

    if-nez p2, :cond_50

    new-instance p2, Li1/o;

    invoke-direct {p2}, Li1/o;-><init>()V

    sput-object p2, Li1/o;->h:Li1/o;

    :cond_50
    monitor-exit p1

    goto :goto_55

    :catchall_52
    move-exception p0

    monitor-exit p1
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_52

    throw p0

    :cond_55
    :goto_55
    sget-object p1, Li1/o;->h:Li1/o;

    invoke-virtual {p1, p0}, Li1/t;->d(Ljava/lang/String;)Lj1/a;

    move-result-object p2

    if-eqz p2, :cond_6e

    const/4 v0, 0x4

    iget v1, p2, Lj1/a;->b:I

    if-eq v0, v1, :cond_63

    goto :goto_6e

    :cond_63
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Li1/o;->j(Lj1/a;Lj1/a;)Lj1/a;

    move-result-object p2

    const/4 v0, 0x5

    iput v0, p2, Lj1/a;->b:I

    invoke-virtual {p1, p0, p2}, Li1/t;->g(Ljava/lang/String;Lj1/a;)V

    :cond_6e
    :goto_6e
    return-void
.end method

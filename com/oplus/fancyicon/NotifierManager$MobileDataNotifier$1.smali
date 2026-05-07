.class Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier$1;->this$0:Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string v0, "onChange: notifyChange "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifierManager"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier$1;->this$0:Lcom/oplus/fancyicon/NotifierManager$MobileDataNotifier;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->notifyChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    return-void
.end method

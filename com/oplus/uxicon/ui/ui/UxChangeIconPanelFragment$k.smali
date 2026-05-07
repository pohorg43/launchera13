.class public Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->waitAndFetchIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1500(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :goto_7
    const/16 v1, 0x14d

    :try_start_9
    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v2}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1600(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v2}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1500(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_1a} :catch_41
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2c

    goto :goto_7

    :cond_1b
    :try_start_1b
    iget v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->a:I

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v3}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v3

    if-ne v2, v3, :cond_54

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1700(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/os/Handler;

    move-result-object p0

    goto :goto_51

    :catchall_2c
    move-exception v2

    iget v3, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->a:I

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v4

    if-ne v3, v4, :cond_40

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1700(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_40
    throw v2

    :catch_41
    iget v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->a:I

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v3}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I

    move-result v3

    if-ne v2, v3, :cond_54

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;->b:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1700(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/os/Handler;

    move-result-object p0

    :goto_51
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_56

    throw p0
.end method

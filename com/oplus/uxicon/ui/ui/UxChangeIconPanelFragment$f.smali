.class public Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$f;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e7

    if-eq p1, v0, :cond_d

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$f;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$600(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$f;->a:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$700(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$600(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "UxEditPanelFragment"

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v3}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$900(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string p1, "dialer_"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v3}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_31
    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxFileUtils;->deleteDrawable(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1000(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;->a()V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$600(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    const-string p0, "save button clicked -- do delete file"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    :cond_4c
    invoke-static {}, Lcom/oplus/uxicon/ui/util/UxFileUtils;->checkChooseIconsRootPath()V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$400(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    new-instance v3, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-direct {v3, v4}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;-><init>(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)V

    invoke-static {p1, v3}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1102(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1100(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$n;

    move-result-object p1

    new-array v1, v1, [Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;

    new-instance v3, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v4}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$400(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v5}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$800(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$l;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    aput-object v3, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_81
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$j;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$1000(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$m;->a()V

    const-string p0, "save button clicked -- do save file"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    return-void
.end method

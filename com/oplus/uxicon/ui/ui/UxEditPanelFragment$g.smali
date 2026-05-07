.class public Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;
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

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v0, p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$402(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$500(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$500(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {v0}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$400(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$600(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_29
    if-eqz p2, :cond_30

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment$g;->a:Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;

    invoke-static {p0, p2}, Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;->access$102(Lcom/oplus/uxicon/ui/ui/UxEditPanelFragment;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_30
    return-void
.end method

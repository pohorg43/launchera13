.class public Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->startToChangeIconPanelAnim(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

.field public final synthetic c:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;


# direct methods
.method public constructor <init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Landroid/graphics/drawable/Drawable;Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->c:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->a:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->c:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->c:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-static {v1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->access$1300(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$n;->a(Landroid/graphics/drawable/Drawable;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;->b:Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->backToFirstPanel()V

    return-void
.end method

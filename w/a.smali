.class public final synthetic Lw/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;II)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lw/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw/a;->c:Ljava/lang/Object;

    iput p3, p0, Lw/a;->d:I

    iput p4, p0, Lw/a;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/animation/ArgbEvaluator;II)V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lw/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lw/a;->c:Ljava/lang/Object;

    iput p3, p0, Lw/a;->d:I

    iput p4, p0, Lw/a;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/CellLayout$LayoutParams;IILandroid/view/View;)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lw/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/a;->b:Ljava/lang/Object;

    iput p2, p0, Lw/a;->d:I

    iput p3, p0, Lw/a;->e:I

    iput-object p4, p0, Lw/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget v0, p0, Lw/a;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lw/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    iget-object v1, p0, Lw/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lw/a;->d:I

    iget p0, p0, Lw/a;->e:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->a(Lcom/android/launcher/pagepreview/PagePreviewItemView;Landroid/animation/ArgbEvaluator;IILandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lw/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lw/a;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget v2, p0, Lw/a;->d:I

    iget p0, p0, Lw/a;->e:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;IILandroid/animation/ValueAnimator;)V

    return-void

    :goto_26
    iget-object v0, p0, Lw/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v1, p0, Lw/a;->d:I

    iget v2, p0, Lw/a;->e:I

    iget-object p0, p0, Lw/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/OplusCellLayout;->b(Lcom/android/launcher3/CellLayout$LayoutParams;IILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

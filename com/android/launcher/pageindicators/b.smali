.class public final synthetic Lcom/android/launcher/pageindicators/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher/pageindicators/b;->c:I

    iput-object p2, p0, Lcom/android/launcher/pageindicators/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/pageindicators/b;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher/pageindicators/b;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/pageindicators/b;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/pageindicators/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget p0, p0, Lcom/android/launcher/pageindicators/b;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->d(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;ILandroid/animation/ValueAnimator;)V

    return-void

    :goto_10
    iget v0, p0, Lcom/android/launcher/pageindicators/b;->c:I

    iget-object p0, p0, Lcom/android/launcher/pageindicators/b;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/icons/PlaceHolderIconDrawable;->a(ILandroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

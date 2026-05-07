.class public final synthetic Lcom/android/launcher3/dragndrop/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/dragndrop/g;->b:I

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/g;->c:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/dragndrop/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/g;->c:Landroid/view/View;

    iput p2, p0, Lcom/android/launcher3/dragndrop/g;->b:I

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/android/launcher3/dragndrop/g;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/launcher3/dragndrop/g;->b:I

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/g;->c:Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->b(ILandroid/view/View;FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :goto_13
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/g;->c:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/dragndrop/g;->b:I

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/DragLayer;->e(Landroid/view/View;IFLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.class public final synthetic Lcom/android/launcher3/dragndrop/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/u;->b:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/u;->a:I

    packed-switch v0, :pswitch_data_e

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/u;->b:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    return-void

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method

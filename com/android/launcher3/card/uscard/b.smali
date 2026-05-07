.class public final synthetic Lcom/android/launcher3/card/uscard/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/card/uscard/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/b;->b:Lcom/android/launcher3/card/uscard/USCardContainerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/card/uscard/b;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/b;->b:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->i(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/b;->b:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->s(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

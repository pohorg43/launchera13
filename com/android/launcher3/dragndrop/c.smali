.class public final synthetic Lcom/android/launcher3/dragndrop/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/dragndrop/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/c;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/dragndrop/c;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/c;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->q(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/c;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->o(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/c;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->j(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

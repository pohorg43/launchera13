.class public final synthetic Lcom/android/launcher3/folder/big/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/launcher3/folder/big/BigFolderIcon;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/folder/big/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/g;->c:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/folder/big/g;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/folder/big/g;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/g;->c:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->c(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/folder/big/g;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/folder/big/g;->c:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v0, p0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->a(Landroid/content/Context;Lcom/android/launcher3/folder/big/BigFolderIcon;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

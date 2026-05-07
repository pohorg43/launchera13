.class public final synthetic Lcom/android/launcher3/folder/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/OplusFolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolderIcon;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/folder/n;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/n;->b:Lcom/android/launcher3/folder/OplusFolderIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/folder/n;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/launcher3/folder/n;->b:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->h(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void

    :pswitch_c  #0x2
    iget-object p0, p0, Lcom/android/launcher3/folder/n;->b:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->l(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void

    :pswitch_12  #0x1
    iget-object p0, p0, Lcom/android/launcher3/folder/n;->b:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->n(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void

    :pswitch_18  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/n;->b:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->k(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher3/folder/n;->b:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-static {p0}, Lcom/android/launcher3/workprofile/OplusWorkFileUtils;->a(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

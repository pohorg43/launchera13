.class public final synthetic Lcom/android/launcher3/folder/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/folder/OplusFolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/folder/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/m;->b:Lcom/android/launcher3/folder/OplusFolder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/folder/m;->a:I

    packed-switch v0, :pswitch_data_e

    :pswitch_5  #0x0
    iget-object p0, p0, Lcom/android/launcher3/folder/m;->b:Lcom/android/launcher3/folder/OplusFolder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method

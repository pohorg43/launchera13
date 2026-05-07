.class public final synthetic Lcom/android/launcher3/model/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/android/launcher3/util/IntArray;

.field public final synthetic d:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;I)V
    .registers 6

    iput p4, p0, Lcom/android/launcher3/model/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/c;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/model/c;->c:Lcom/android/launcher3/util/IntArray;

    iput-object p3, p0, Lcom/android/launcher3/model/c;->d:Lcom/android/launcher3/util/IntArray;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/c;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/c;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/c;->c:Lcom/android/launcher3/util/IntArray;

    iget-object p0, p0, Lcom/android/launcher3/model/c;->d:Lcom/android/launcher3/util/IntArray;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/AutomaticAddNoPositionItemsTask;->j(Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/model/c;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/model/c;->c:Lcom/android/launcher3/util/IntArray;

    iget-object p0, p0, Lcom/android/launcher3/model/c;->d:Lcom/android/launcher3/util/IntArray;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/OplusAddWorkspaceItemsTask;->j(Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

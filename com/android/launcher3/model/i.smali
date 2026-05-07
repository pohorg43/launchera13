.class public final synthetic Lcom/android/launcher3/model/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;III)V
    .registers 5

    iput p4, p0, Lcom/android/launcher3/model/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/i;->b:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/launcher3/model/i;->c:I

    iput p3, p0, Lcom/android/launcher3/model/i;->d:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/i;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/i;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/launcher3/model/i;->c:I

    iget p0, p0, Lcom/android/launcher3/model/i;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->b(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/model/i;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/launcher3/model/i;->c:I

    iget p0, p0, Lcom/android/launcher3/model/i;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->q(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

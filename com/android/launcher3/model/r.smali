.class public final synthetic Lcom/android/launcher3/model/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/model/r;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/r;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/r;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/r;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->b(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/launcher3/model/r;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/LoaderResults;->e(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

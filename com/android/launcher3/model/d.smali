.class public final synthetic Lcom/android/launcher3/model/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Lcom/android/launcher3/model/data/AppInfo;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>([Lcom/android/launcher3/model/data/AppInfo;II)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/model/d;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/d;->b:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/model/d;->c:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/d;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/d;->b:[Lcom/android/launcher3/model/data/AppInfo;

    iget p0, p0, Lcom/android/launcher3/model/d;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/BaseLoaderResults;->c([Lcom/android/launcher3/model/data/AppInfo;ILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/model/d;->b:[Lcom/android/launcher3/model/data/AppInfo;

    iget p0, p0, Lcom/android/launcher3/model/d;->c:I

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->f([Lcom/android/launcher3/model/data/AppInfo;ILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

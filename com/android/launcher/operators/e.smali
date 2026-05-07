.class public final synthetic Lcom/android/launcher/operators/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/operators/GeneralCustomizer$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/operators/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/operators/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/operators/e;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/operators/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/operators/GeneralCustomizer$1;

    invoke-static {p0, p1}, Lcom/android/launcher/operators/GeneralCustomizer$1;->j(Lcom/android/launcher/operators/GeneralCustomizer$1;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher/operators/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize$2;->j(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

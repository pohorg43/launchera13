.class public final synthetic Lcom/android/launcher3/model/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/model/p;->a:I

    packed-switch p2, :pswitch_data_48

    goto :goto_42

    :pswitch_6  #0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_c  #0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_12  #0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_18  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_1e  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_24  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_2a  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_30  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_36  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_3c  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :goto_42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_36  #00000002
        :pswitch_30  #00000003
        :pswitch_2a  #00000004
        :pswitch_24  #00000005
        :pswitch_1e  #00000006
        :pswitch_18  #00000007
        :pswitch_12  #00000008
        :pswitch_c  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/p;->a:I

    packed-switch v0, :pswitch_data_48

    goto :goto_42

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusUserUnlockedTask;->j(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_c  #0x8
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusSuperPowerSaveLoaderResults;->f(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_12  #0x7
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->p(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_18  #0x6
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->q(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_1e  #0x5
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->s(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_24  #0x4
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->r(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_2a  #0x3
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->m(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_30  #0x2
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;->j(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_36  #0x1
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ModelWriter;->g(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_3c  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->g(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :goto_42
    iget-object p0, p0, Lcom/android/launcher3/model/p;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;->j(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3c  #00000000
        :pswitch_36  #00000001
        :pswitch_30  #00000002
        :pswitch_2a  #00000003
        :pswitch_24  #00000004
        :pswitch_1e  #00000005
        :pswitch_18  #00000006
        :pswitch_12  #00000007
        :pswitch_c  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method

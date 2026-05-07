.class public final synthetic Lcom/android/launcher3/model/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/smartsdk/SmartAPICallback;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/l0;

.field public static final synthetic c:Lcom/android/launcher3/model/l0;

.field public static final synthetic d:Lcom/android/launcher3/model/l0;

.field public static final synthetic e:Lcom/android/launcher3/model/l0;

.field public static final synthetic f:Lcom/android/launcher3/model/l0;

.field public static final synthetic g:Lcom/android/launcher3/model/l0;

.field public static final synthetic h:Lcom/android/launcher3/model/l0;

.field public static final synthetic i:Lcom/android/launcher3/model/l0;

.field public static final synthetic j:Lcom/android/launcher3/model/l0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->b:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->c:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->d:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->e:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->f:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->g:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->h:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->i:Lcom/android/launcher3/model/l0;

    new-instance v0, Lcom/android/launcher3/model/l0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/l0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/l0;->j:Lcom/android/launcher3/model/l0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/model/OplusBaseLoaderResults;->n(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/launcher3/model/l0;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x7
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->A()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {}, Lcom/oplus/statistics/agent/PageVisitAgent;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_6  #00000007
    .end packed-switch
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/l0;->a:I

    packed-switch p0, :pswitch_data_1c

    goto :goto_17

    :pswitch_6  #0x4
    new-instance p0, Lcom/android/quickstep/util/VibratorWrapper;

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/VibratorWrapper;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_c  #0x3
    new-instance p0, Lcom/android/quickstep/SimpleOrientationTouchTransformer;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SimpleOrientationTouchTransformer;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_12  #0x2
    invoke-static {p1}, Lcom/android/launcher3/util/SettingsCache;->a(Landroid/content/Context;)Lcom/android/launcher3/util/SettingsCache;

    move-result-object p0

    return-object p0

    :goto_17
    invoke-static {p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->d(Landroid/content/Context;)Lcom/oplus/quickstep/appswitch/AppSwitchController;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 2

    invoke-static {p1}, Lcom/oplus/card/helper/SmartEngineHelper$mSmartEngineUpdateListener$1;->a(Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/graphics/Point;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

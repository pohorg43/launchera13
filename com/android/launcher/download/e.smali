.class public final synthetic Lcom/android/launcher/download/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/download/e;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    return-void

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    return-void

    :cond_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/download/e;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->a(Ljava/lang/String;)V

    return-void

    :pswitch_c  #0x3
    iget-object p0, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher/receiver/PackageUpdateReceiver;->b(Ljava/lang/String;)V

    return-void

    :pswitch_12  #0x2
    iget-object p0, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher/predictedapps/PredictedAppManager;->a(Ljava/lang/String;)V

    return-void

    :pswitch_18  #0x1
    iget-object p0, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->i(Ljava/lang/String;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/launcher/download/DownloadAppsManager;->b(Ljava/lang/String;)V

    return-void

    :goto_24
    iget-object p0, p0, Lcom/android/launcher/download/e;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/remoteanim/OtherAppsRemoteAnimationProxy;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

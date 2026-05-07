.class public final synthetic Lcom/android/launcher/folder/download/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/folder/download/MarketServiceManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/card/LongClickEffectHandler;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolder;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/OplusFolderPagedView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/MotionPauseDetector;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/download/a;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_36

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->a(Lcom/android/quickstep/util/MotionPauseDetector;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->d(Landroid/view/View;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderPagedView;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->k(Lcom/android/launcher3/folder/OplusFolderPagedView;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-static {p0, p1}, Lcom/android/launcher3/folder/OplusFolder;->s(Lcom/android/launcher3/folder/OplusFolder;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_26  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/LongClickEffectHandler;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->a(Lcom/android/launcher3/card/LongClickEffectHandler;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_2e  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/folder/download/MarketServiceManager;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/MarketServiceManager;->a(Lcom/android/launcher/folder/download/MarketServiceManager;Lcom/android/launcher3/Alarm;)V

    return-void

    :goto_36
    iget-object p0, p0, Lcom/android/launcher/folder/download/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;->a(Lcom/oplus/quickstep/touch/OplusMotionPauseDetector;Lcom/android/launcher3/Alarm;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_26  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method

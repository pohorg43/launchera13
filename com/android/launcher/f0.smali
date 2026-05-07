.class public final synthetic Lcom/android/launcher/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher/f0;

.field public static final synthetic c:Lcom/android/launcher/f0;

.field public static final synthetic d:Lcom/android/launcher/f0;

.field public static final synthetic e:Lcom/android/launcher/f0;

.field public static final synthetic f:Lcom/android/launcher/f0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/f0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/f0;->b:Lcom/android/launcher/f0;

    new-instance v0, Lcom/android/launcher/f0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/f0;->c:Lcom/android/launcher/f0;

    new-instance v0, Lcom/android/launcher/f0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/f0;->d:Lcom/android/launcher/f0;

    new-instance v0, Lcom/android/launcher/f0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/f0;->e:Lcom/android/launcher/f0;

    new-instance v0, Lcom/android/launcher/f0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/f0;->f:Lcom/android/launcher/f0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher/f0;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_1e

    :pswitch_6  #0x3
    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipDismiss()V

    return-void

    :pswitch_c  #0x2
    check-cast p1, Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;

    invoke-interface {p1}, Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;->onSlideInViewClosed()V

    return-void

    :pswitch_12  #0x1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    return-void

    :pswitch_18  #0x0
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher/OplusPagedViewImpl;->g(Landroid/view/View;)V

    return-void

    :goto_1e
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/FocusModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_12  #00000001
        :pswitch_c  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

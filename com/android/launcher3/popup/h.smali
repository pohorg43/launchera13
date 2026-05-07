.class public final synthetic Lcom/android/launcher3/popup/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/popup/h;

.field public static final synthetic c:Lcom/android/launcher3/popup/h;

.field public static final synthetic d:Lcom/android/launcher3/popup/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/h;->b:Lcom/android/launcher3/popup/h;

    new-instance v0, Lcom/android/launcher3/popup/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/h;->c:Lcom/android/launcher3/popup/h;

    new-instance v0, Lcom/android/launcher3/popup/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/h;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/h;->d:Lcom/android/launcher3/popup/h;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    iget p0, p0, Lcom/android/launcher3/popup/h;->a:I

    packed-switch p0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppShare;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppShare;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_e  #0x0
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ExpressAndDelivery;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ExpressAndDelivery;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :goto_16
    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut;->g(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

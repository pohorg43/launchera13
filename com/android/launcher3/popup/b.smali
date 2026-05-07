.class public final synthetic Lcom/android/launcher3/popup/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/popup/b;

.field public static final synthetic c:Lcom/android/launcher3/popup/b;

.field public static final synthetic d:Lcom/android/launcher3/popup/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/b;->b:Lcom/android/launcher3/popup/b;

    new-instance v0, Lcom/android/launcher3/popup/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/b;->c:Lcom/android/launcher3/popup/b;

    new-instance v0, Lcom/android/launcher3/popup/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/b;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/b;->d:Lcom/android/launcher3/popup/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    iget p0, p0, Lcom/android/launcher3/popup/b;->a:I

    packed-switch p0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppEdit;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppEdit;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_e  #0x0
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ServiceRecommendSetting;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ServiceRecommendSetting;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :goto_16
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppOpenNewWindow;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppOpenNewWindow;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

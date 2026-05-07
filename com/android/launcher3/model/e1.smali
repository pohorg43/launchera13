.class public final synthetic Lcom/android/launcher3/model/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/SystemShortcut$Factory;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/e1;

.field public static final synthetic c:Lcom/android/launcher3/model/e1;

.field public static final synthetic d:Lcom/android/launcher3/model/e1;

.field public static final synthetic e:Lcom/android/launcher3/model/e1;

.field public static final synthetic f:Lcom/android/launcher3/model/e1;

.field public static final synthetic g:Lcom/android/launcher3/model/e1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/e1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/e1;->b:Lcom/android/launcher3/model/e1;

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/e1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/e1;->c:Lcom/android/launcher3/model/e1;

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/e1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/e1;->d:Lcom/android/launcher3/model/e1;

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/e1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/e1;->e:Lcom/android/launcher3/model/e1;

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/e1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/e1;->f:Lcom/android/launcher3/model/e1;

    new-instance v0, Lcom/android/launcher3/model/e1;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/e1;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/e1;->g:Lcom/android/launcher3/model/e1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/e1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    iget p0, p0, Lcom/android/launcher3/model/e1;->a:I

    packed-switch p0, :pswitch_data_34

    goto :goto_2c

    :pswitch_6  #0x4
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut;->f(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x3
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$CardAdd;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$CardAdd;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_15  #0x2
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FixedWidgetShortcut;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FixedWidgetShortcut;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_1d  #0x1
    new-instance p0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ServiceIntroduction;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ServiceIntroduction;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_25  #0x0
    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/model/WellbeingModel;->h(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0

    :goto_2c
    new-instance p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;

    check-cast p1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object p0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_1d  #00000001
        :pswitch_15  #00000002
        :pswitch_d  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method

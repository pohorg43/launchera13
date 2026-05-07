.class public final synthetic Lcom/android/launcher/powersave/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/powersave/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/powersave/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/powersave/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/powersave/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/powersave/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/powersave/c;->a:I

    packed-switch v0, :pswitch_data_52

    goto :goto_42

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->b(Ljava/lang/String;Ljava/util/Set;Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result p0

    return p0

    :pswitch_15  #0x2
    iget-object v0, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->a(Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0

    :pswitch_24  #0x1
    iget-object v0, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    check-cast p1, Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->g(Ljava/lang/String;[Ljava/lang/String;Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p0

    return p0

    :pswitch_33  #0x0
    iget-object v0, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveAppsManager;->a(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/AppInfo;)Z

    move-result p0

    return p0

    :goto_42
    iget-object v0, p0, Lcom/android/launcher/powersave/c;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/launcher/powersave/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->d(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_24  #00000001
        :pswitch_15  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

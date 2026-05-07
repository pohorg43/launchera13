.class public final synthetic Lcom/android/launcher3/model/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/i1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/i1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/i1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/i1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/i1;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/i1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/i1;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_15

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/i1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;

    iget-object p0, p0, Lcom/android/launcher3/model/i1;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/WidgetItem;

    check-cast p1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/WidgetsModel;->g(Lcom/android/launcher3/model/WidgetsModel$PackageItemInfoCache;Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/util/PackageUserKey;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :goto_15
    iget-object v0, p0, Lcom/android/launcher3/model/i1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    iget-object p0, p0, Lcom/android/launcher3/model/i1;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->m(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

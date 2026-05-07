.class public final synthetic Lcom/android/launcher3/model/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/v;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/v;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/v;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/text/SpannableString;Landroid/text/SpannedString;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/v;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/v;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/model/v;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/v;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_2a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/model/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;

    iget-object v1, p0, Lcom/android/launcher3/model/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/pm/PackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;->j(Lcom/android/launcher3/model/PackageIncrementalDownloadUpdatedTask;Lcom/android/launcher3/pm/PackageInstallInfo;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :pswitch_18  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iget-object v1, p0, Lcom/android/launcher3/model/v;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, Lcom/android/launcher3/model/v;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->j(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/launcher3/model/v;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    iget-object v1, p0, Lcom/android/launcher3/model/v;->c:Ljava/lang/Object;

    check-cast v1, Landroid/text/SpannableString;

    iget-object p0, p0, Lcom/android/launcher3/model/v;->d:Ljava/lang/Object;

    check-cast p0, Landroid/text/SpannedString;

    check-cast p1, Landroid/text/Annotation;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->d(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

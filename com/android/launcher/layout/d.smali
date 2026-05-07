.class public final synthetic Lcom/android/launcher/layout/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/data/FolderInfo;

.field public final synthetic b:Lcom/android/launcher3/model/data/AppInfo;

.field public final synthetic c:Lcom/android/launcher/Launcher;

.field public final synthetic d:Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/layout/d;->a:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object p2, p0, Lcom/android/launcher/layout/d;->b:Lcom/android/launcher3/model/data/AppInfo;

    iput-object p3, p0, Lcom/android/launcher/layout/d;->c:Lcom/android/launcher/Launcher;

    iput-object p4, p0, Lcom/android/launcher/layout/d;->d:Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/layout/d;->a:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, p0, Lcom/android/launcher/layout/d;->b:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, p0, Lcom/android/launcher/layout/d;->c:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher/layout/d;->d:Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/layout/SpecialAppCompatHelper;->a(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher/Launcher;Lcom/android/launcher/layout/SpecialAppCompatHelper$AppPositionInfo;)V

    return-void
.end method

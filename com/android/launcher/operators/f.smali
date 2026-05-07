.class public final synthetic Lcom/android/launcher/operators/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/operators/OobeLayoutCustomize;

.field public final synthetic b:Lcom/android/launcher/OplusLauncherAppsCompat;

.field public final synthetic c:Lcom/android/launcher3/allapps/AllAppsStore;

.field public final synthetic d:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/operators/OobeLayoutCustomize;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/LauncherModel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/f;->a:Lcom/android/launcher/operators/OobeLayoutCustomize;

    iput-object p2, p0, Lcom/android/launcher/operators/f;->b:Lcom/android/launcher/OplusLauncherAppsCompat;

    iput-object p3, p0, Lcom/android/launcher/operators/f;->c:Lcom/android/launcher3/allapps/AllAppsStore;

    iput-object p4, p0, Lcom/android/launcher/operators/f;->d:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/operators/f;->a:Lcom/android/launcher/operators/OobeLayoutCustomize;

    iget-object v1, p0, Lcom/android/launcher/operators/f;->b:Lcom/android/launcher/OplusLauncherAppsCompat;

    iget-object v2, p0, Lcom/android/launcher/operators/f;->c:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/android/launcher/operators/f;->d:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/operators/OobeLayoutCustomize;->a(Lcom/android/launcher/operators/OobeLayoutCustomize;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

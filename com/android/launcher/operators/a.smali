.class public final synthetic Lcom/android/launcher/operators/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/launcher3/LauncherModel;

.field public final synthetic e:Lcom/android/launcher/bean/OperatorsWidgetData;

.field public final synthetic f:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/operators/AppWidgetReloadHelper$1;Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/a;->a:Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

    iput-object p2, p0, Lcom/android/launcher/operators/a;->b:Landroid/content/Context;

    iput p3, p0, Lcom/android/launcher/operators/a;->c:I

    iput-object p4, p0, Lcom/android/launcher/operators/a;->d:Lcom/android/launcher3/LauncherModel;

    iput-object p5, p0, Lcom/android/launcher/operators/a;->e:Lcom/android/launcher/bean/OperatorsWidgetData;

    iput-object p6, p0, Lcom/android/launcher/operators/a;->f:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/operators/a;->a:Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

    iget-object v1, p0, Lcom/android/launcher/operators/a;->b:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher/operators/a;->c:I

    iget-object v3, p0, Lcom/android/launcher/operators/a;->d:Lcom/android/launcher3/LauncherModel;

    iget-object v4, p0, Lcom/android/launcher/operators/a;->e:Lcom/android/launcher/bean/OperatorsWidgetData;

    iget-object v5, p0, Lcom/android/launcher/operators/a;->f:Lcom/android/launcher3/Launcher;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->a(Lcom/android/launcher/operators/AppWidgetReloadHelper$1;Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.class public final synthetic Lcom/android/launcher/operators/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/operators/GeneralCustomizer;

.field public final synthetic b:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/operators/GeneralCustomizer;Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/d;->a:Lcom/android/launcher/operators/GeneralCustomizer;

    iput-object p2, p0, Lcom/android/launcher/operators/d;->b:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final onAppsUpdated()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/operators/d;->a:Lcom/android/launcher/operators/GeneralCustomizer;

    iget-object p0, p0, Lcom/android/launcher/operators/d;->b:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p0}, Lcom/android/launcher/operators/GeneralCustomizer;->d(Lcom/android/launcher/operators/GeneralCustomizer;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

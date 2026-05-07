.class public final synthetic Lcom/android/launcher/touch/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/Launcher;

.field public final synthetic b:Landroid/app/SearchManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/f;->a:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher/touch/f;->b:Landroid/app/SearchManager;

    iput-object p3, p0, Lcom/android/launcher/touch/f;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/launcher/touch/f;->d:Z

    iput-object p5, p0, Lcom/android/launcher/touch/f;->e:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/android/launcher/touch/f;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/touch/f;->a:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/launcher/touch/f;->b:Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/launcher/touch/f;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/launcher/touch/f;->d:Z

    iget-object v4, p0, Lcom/android/launcher/touch/f;->e:Landroid/os/Bundle;

    iget-boolean v5, p0, Lcom/android/launcher/touch/f;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->f(Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method

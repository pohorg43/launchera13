.class public final synthetic Lcom/android/launcher/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/Launcher;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/b0;->a:Lcom/android/launcher/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher/b0;->b:Z

    iput-object p3, p0, Lcom/android/launcher/b0;->c:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher/b0;->d:Z

    iput-boolean p5, p0, Lcom/android/launcher/b0;->e:Z

    iput-object p6, p0, Lcom/android/launcher/b0;->f:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/b0;->a:Lcom/android/launcher/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher/b0;->b:Z

    iget-object v2, p0, Lcom/android/launcher/b0;->c:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/launcher/b0;->d:Z

    iget-boolean v4, p0, Lcom/android/launcher/b0;->e:Z

    iget-object v5, p0, Lcom/android/launcher/b0;->f:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/Launcher;->B(Lcom/android/launcher/Launcher;ZLandroid/view/View;ZZLcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

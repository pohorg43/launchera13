.class public final synthetic Lcom/android/launcher3/appedit/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/appedit/AppCustomizerManager;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/appedit/a;->a:Lcom/android/launcher3/appedit/AppCustomizerManager;

    iput-object p2, p0, Lcom/android/launcher3/appedit/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/appedit/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/appedit/a;->d:Ljava/lang/String;

    iput p5, p0, Lcom/android/launcher3/appedit/a;->e:I

    iput-object p6, p0, Lcom/android/launcher3/appedit/a;->f:Ljava/lang/String;

    iput p7, p0, Lcom/android/launcher3/appedit/a;->g:I

    iput-boolean p8, p0, Lcom/android/launcher3/appedit/a;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/appedit/a;->a:Lcom/android/launcher3/appedit/AppCustomizerManager;

    iget-object v1, p0, Lcom/android/launcher3/appedit/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/appedit/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/appedit/a;->d:Ljava/lang/String;

    iget v4, p0, Lcom/android/launcher3/appedit/a;->e:I

    iget-object v5, p0, Lcom/android/launcher3/appedit/a;->f:Ljava/lang/String;

    iget v6, p0, Lcom/android/launcher3/appedit/a;->g:I

    iget-boolean v7, p0, Lcom/android/launcher3/appedit/a;->h:Z

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/appedit/AppCustomizerManager;->a(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    return-void
.end method

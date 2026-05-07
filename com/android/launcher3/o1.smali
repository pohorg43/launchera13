.class public final synthetic Lcom/android/launcher3/o1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;ILjava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o1;->a:Lcom/android/launcher3/OplusWorkspace;

    iput-boolean p2, p0, Lcom/android/launcher3/o1;->b:Z

    iput p3, p0, Lcom/android/launcher3/o1;->c:I

    iput-object p4, p0, Lcom/android/launcher3/o1;->d:Ljava/lang/String;

    iput p5, p0, Lcom/android/launcher3/o1;->e:I

    iput-object p6, p0, Lcom/android/launcher3/o1;->f:Ljava/lang/String;

    iput p7, p0, Lcom/android/launcher3/o1;->g:I

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/o1;->a:Lcom/android/launcher3/OplusWorkspace;

    iget-boolean v1, p0, Lcom/android/launcher3/o1;->b:Z

    iget v2, p0, Lcom/android/launcher3/o1;->c:I

    iget-object v3, p0, Lcom/android/launcher3/o1;->d:Ljava/lang/String;

    iget v4, p0, Lcom/android/launcher3/o1;->e:I

    iget-object v5, p0, Lcom/android/launcher3/o1;->f:Ljava/lang/String;

    iget v6, p0, Lcom/android/launcher3/o1;->g:I

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/OplusWorkspace;->A(Lcom/android/launcher3/OplusWorkspace;ZILjava/lang/String;ILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

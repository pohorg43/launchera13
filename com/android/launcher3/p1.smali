.class public final synthetic Lcom/android/launcher3/p1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ZILjava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/p1;->a:Z

    iput p2, p0, Lcom/android/launcher3/p1;->b:I

    iput-object p3, p0, Lcom/android/launcher3/p1;->c:Ljava/lang/String;

    iput p4, p0, Lcom/android/launcher3/p1;->d:I

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/p1;->a:Z

    iget v1, p0, Lcom/android/launcher3/p1;->b:I

    iget-object v2, p0, Lcom/android/launcher3/p1;->c:Ljava/lang/String;

    iget v3, p0, Lcom/android/launcher3/p1;->d:I

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/OplusWorkspace;->E(ZILjava/lang/String;ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

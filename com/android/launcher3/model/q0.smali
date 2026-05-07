.class public final synthetic Lcom/android/launcher3/model/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/OplusPackageUpdatedTask;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/HashSet;

.field public final synthetic d:Ljava/util/function/Predicate;

.field public final synthetic e:Lcom/android/launcher3/util/IntSet;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/android/launcher3/util/IntSet;

.field public final synthetic h:Ljava/util/HashMap;

.field public final synthetic i:Ljava/util/HashSet;

.field public final synthetic j:Lcom/android/launcher3/model/AllAppsList;

.field public final synthetic k:Ljava/util/HashMap;

.field public final synthetic l:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic m:Lcom/android/launcher3/util/FlagOp;

.field public final synthetic n:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusPackageUpdatedTask;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/q0;->a:Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/q0;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/model/q0;->c:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher3/model/q0;->d:Ljava/util/function/Predicate;

    iput-object p5, p0, Lcom/android/launcher3/model/q0;->e:Lcom/android/launcher3/util/IntSet;

    iput-boolean p6, p0, Lcom/android/launcher3/model/q0;->f:Z

    iput-object p7, p0, Lcom/android/launcher3/model/q0;->g:Lcom/android/launcher3/util/IntSet;

    iput-object p8, p0, Lcom/android/launcher3/model/q0;->h:Ljava/util/HashMap;

    iput-object p9, p0, Lcom/android/launcher3/model/q0;->i:Ljava/util/HashSet;

    iput-object p10, p0, Lcom/android/launcher3/model/q0;->j:Lcom/android/launcher3/model/AllAppsList;

    iput-object p11, p0, Lcom/android/launcher3/model/q0;->k:Ljava/util/HashMap;

    iput-object p12, p0, Lcom/android/launcher3/model/q0;->l:Lcom/android/launcher3/icons/IconCache;

    iput-object p13, p0, Lcom/android/launcher3/model/q0;->m:Lcom/android/launcher3/util/FlagOp;

    iput-object p14, p0, Lcom/android/launcher3/model/q0;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/model/q0;->a:Lcom/android/launcher3/model/OplusPackageUpdatedTask;

    iget-object v2, v0, Lcom/android/launcher3/model/q0;->b:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/launcher3/model/q0;->c:Ljava/util/HashSet;

    iget-object v4, v0, Lcom/android/launcher3/model/q0;->d:Ljava/util/function/Predicate;

    iget-object v5, v0, Lcom/android/launcher3/model/q0;->e:Lcom/android/launcher3/util/IntSet;

    iget-boolean v6, v0, Lcom/android/launcher3/model/q0;->f:Z

    iget-object v7, v0, Lcom/android/launcher3/model/q0;->g:Lcom/android/launcher3/util/IntSet;

    iget-object v8, v0, Lcom/android/launcher3/model/q0;->h:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/android/launcher3/model/q0;->i:Ljava/util/HashSet;

    iget-object v10, v0, Lcom/android/launcher3/model/q0;->j:Lcom/android/launcher3/model/AllAppsList;

    iget-object v11, v0, Lcom/android/launcher3/model/q0;->k:Ljava/util/HashMap;

    iget-object v12, v0, Lcom/android/launcher3/model/q0;->l:Lcom/android/launcher3/icons/IconCache;

    iget-object v13, v0, Lcom/android/launcher3/model/q0;->m:Lcom/android/launcher3/util/FlagOp;

    iget-object v14, v0, Lcom/android/launcher3/model/q0;->n:Ljava/util/ArrayList;

    move-object/from16 v15, p1

    check-cast v15, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-static/range {v0 .. v14}, Lcom/android/launcher3/model/OplusPackageUpdatedTask;->n(Lcom/android/launcher3/model/OplusPackageUpdatedTask;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLcom/android/launcher3/util/IntSet;Ljava/util/HashMap;Ljava/util/HashSet;Lcom/android/launcher3/model/AllAppsList;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

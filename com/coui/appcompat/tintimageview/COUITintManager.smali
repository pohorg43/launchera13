.class public final Lcom/coui/appcompat/tintimageview/COUITintManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field public static final c:Landroid/graphics/PorterDuff$Mode;

.field public static final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/coui/appcompat/tintimageview/COUITintManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->c:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->d:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/tintimageview/COUITintManager;->e:Lcom/coui/appcompat/tintimageview/COUITintManager$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coui/appcompat/tintimageview/COUITintManager;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.class public final Lcom/android/launcher3/appedit/AppEditDBManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appedit/AppEditDBManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

.field private static final TAG:Ljava/lang/String; = "AppEditDBManager"

.field private static mDbCount:I

.field private static mMaxId:I

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/android/launcher3/appedit/AppEditDBManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheInfo:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/appedit/AppEditInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/appedit/AppEditDBManager;->mDbCount:I

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager$Companion$sInstance$2;->INSTANCE:Lcom/android/launcher3/appedit/AppEditDBManager$Companion$sInstance$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/appedit/AppEditDBManager;->cacheInfo:Landroid/util/LruCache;

    return-void
.end method

.method public static final synthetic access$getMDbCount$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/appedit/AppEditDBManager;->mDbCount:I

    return v0
.end method

.method public static final synthetic access$getMMaxId$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/appedit/AppEditDBManager;->mMaxId:I

    return v0
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final synthetic access$setMDbCount$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/appedit/AppEditDBManager;->mDbCount:I

    return-void
.end method

.method public static final synthetic access$setMMaxId$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/appedit/AppEditDBManager;->mMaxId:I

    return-void
.end method

.method public static final getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/appedit/AppEditDBManager;->Companion:Lcom/android/launcher3/appedit/AppEditDBManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/appedit/AppEditDBManager$Companion;->getInstance()Lcom/android/launcher3/appedit/AppEditDBManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getCacheInfo()Landroid/util/LruCache;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/appedit/AppEditInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/appedit/AppEditDBManager;->cacheInfo:Landroid/util/LruCache;

    return-object p0
.end method

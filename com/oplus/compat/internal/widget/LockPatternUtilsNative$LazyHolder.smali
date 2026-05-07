.class Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    invoke-static {}, Lcom/oplus/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->INSTANCE:Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;
    .registers 1

    sget-object v0, Lcom/oplus/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->INSTANCE:Lcom/oplus/compat/internal/widget/LockPatternUtilsNative;

    return-object v0
.end method

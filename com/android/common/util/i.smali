.class public final synthetic Lcom/android/common/util/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic a:Lcom/android/common/util/i;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/i;

    invoke-direct {v0}, Lcom/android/common/util/i;-><init>()V

    sput-object v0, Lcom/android/common/util/i;->a:Lcom/android/common/util/i;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/launcher3/util/ComponentKey;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Lcom/android/common/util/DrawAppSortManagerUtil;->a(Lcom/android/launcher3/util/ComponentKey;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

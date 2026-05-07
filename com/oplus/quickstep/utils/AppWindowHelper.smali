.class public final Lcom/oplus/quickstep/utils/AppWindowHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/AppWindowHelper;

.field private static final choreographer:Landroid/view/Choreographer;

.field public static currentProgress:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static currentScrollOffset:F
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static updateParamsNextFrame:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/AppWindowHelper;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/AppWindowHelper;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/AppWindowHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppWindowHelper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/quickstep/utils/AppWindowHelper;->choreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChoreographer()Landroid/view/Choreographer;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/utils/AppWindowHelper;->choreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.class public final Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;

    invoke-direct {v0}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/ZoomWindowType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFLOAT_WINDOW()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final getMINI_WINDOW()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

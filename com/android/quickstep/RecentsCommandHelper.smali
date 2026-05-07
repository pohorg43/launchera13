.class public final Lcom/android/quickstep/RecentsCommandHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/RecentsCommandHelper;

.field private static lastToggleTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/RecentsCommandHelper;

    invoke-direct {v0}, Lcom/android/quickstep/RecentsCommandHelper;-><init>()V

    sput-object v0, Lcom/android/quickstep/RecentsCommandHelper;->INSTANCE:Lcom/android/quickstep/RecentsCommandHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLastToggleTime()J
    .registers 3

    sget-wide v0, Lcom/android/quickstep/RecentsCommandHelper;->lastToggleTime:J

    return-wide v0
.end method

.method public final setLastToggleTime(J)V
    .registers 3

    sput-wide p1, Lcom/android/quickstep/RecentsCommandHelper;->lastToggleTime:J

    return-void
.end method

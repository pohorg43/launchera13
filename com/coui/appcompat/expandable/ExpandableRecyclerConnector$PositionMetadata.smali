.class public Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionMetadata"
.end annotation


# static fields
.field public static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

.field public b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;
    .registers 10

    sget-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_35

    iget-object v0, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    const/4 v3, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b()V

    iput-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    :cond_1f
    iput-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iput v2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    goto :goto_2a

    :cond_24
    :try_start_24
    new-instance v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    invoke-direct {v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;-><init>()V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_35

    :goto_2a
    invoke-static {p1, p2, p3, p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a(IIII)Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iput-object p4, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iput p5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    return-object v1

    :catchall_35
    move-exception p0

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b()V

    iput-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    :cond_a
    iput-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    sget-object v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_12
    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_20

    sget-object v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw p0
.end method
